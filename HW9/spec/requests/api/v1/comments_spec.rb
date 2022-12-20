require 'swagger_helper'

RSpec.describe 'api/v1/comments', type: :request do
  path '/articles/{article_id}/comments/published' do
    # You'll want to customize the parameter types...
    parameter name: 'article_id', in: :path, type: :string, description: 'article_id'

    get('published comment') do
      response(200, 'successful') do
        let(:article_id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/articles/{article_id}/comments/unpublished' do
    # You'll want to customize the parameter types...
    parameter name: 'article_id', in: :path, type: :string, description: 'article_id'

    get('unpublished comment') do
      response(200, 'successful') do
        let(:article_id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/articles/{article_id}/comments/latest' do
    # You'll want to customize the parameter types...
    parameter name: 'article_id', in: :path, type: :string, description: 'article_id'

    get('latest comment') do
      response(200, 'successful') do
        let(:article_id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/articles/{article_id}/comments/{id}/status' do
    # You'll want to customize the parameter types...
    parameter name: 'article_id', in: :path, type: :string, description: 'article_id'
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('status comment') do
      response(200, 'successful') do
        let(:article_id) { '123' }
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/articles/{article_id}/comments' do
    # You'll want to customize the parameter types...
    parameter name: 'article_id', in: :path, type: :string, description: 'article_id'

    get('list comments') do
      response(200, 'successful') do
        let(:article_id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    post('create comment') do
      response(200, 'successful') do
        let(:article_id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/articles/{article_id}/comments/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'article_id', in: :path, type: :string, description: 'article_id'
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show comment') do
      response(200, 'successful') do
        let(:article_id) { '123' }
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    patch('update comment') do
      response(200, 'successful') do
        let(:article_id) { '123' }
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    put('update comment') do
      response(200, 'successful') do
        let(:article_id) { '123' }
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    delete('delete comment') do
      response(200, 'successful') do
        let(:article_id) { '123' }
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/authors/{author_id}/comments/published' do
    # You'll want to customize the parameter types...
    parameter name: 'author_id', in: :path, type: :string, description: 'author_id'

    get('published comment') do
      response(200, 'successful') do
        let(:author_id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/authors/{author_id}/comments/unpublished' do
    # You'll want to customize the parameter types...
    parameter name: 'author_id', in: :path, type: :string, description: 'author_id'

    get('unpublished comment') do
      response(200, 'successful') do
        let(:author_id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/authors/{author_id}/comments/latest' do
    # You'll want to customize the parameter types...
    parameter name: 'author_id', in: :path, type: :string, description: 'author_id'

    get('latest comment') do
      response(200, 'successful') do
        let(:author_id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/authors/{author_id}/comments/{id}/status' do
    # You'll want to customize the parameter types...
    parameter name: 'author_id', in: :path, type: :string, description: 'author_id'
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('status comment') do
      response(200, 'successful') do
        let(:author_id) { '123' }
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/authors/{author_id}/comments' do
    # You'll want to customize the parameter types...
    parameter name: 'author_id', in: :path, type: :string, description: 'author_id'

    get('list comments') do
      response(200, 'successful') do
        let(:author_id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    post('create comment') do
      response(200, 'successful') do
        let(:author_id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/authors/{author_id}/comments/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'author_id', in: :path, type: :string, description: 'author_id'
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show comment') do
      response(200, 'successful') do
        let(:author_id) { '123' }
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    patch('update comment') do
      response(200, 'successful') do
        let(:author_id) { '123' }
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    put('update comment') do
      response(200, 'successful') do
        let(:author_id) { '123' }
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    delete('delete comment') do
      response(200, 'successful') do
        let(:author_id) { '123' }
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
